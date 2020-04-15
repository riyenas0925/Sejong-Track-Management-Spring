package kr.ac.sejong.web;

import kr.ac.sejong.domain.course.Course;
import kr.ac.sejong.domain.member.MemberRepository;
import kr.ac.sejong.domain.rule.Rule;
import kr.ac.sejong.domain.track.TrackRepository;
import kr.ac.sejong.domain.trackcourse.TrackCourse;
import kr.ac.sejong.service.JudgeLogService;
import kr.ac.sejong.service.TrackCourseService;
import kr.ac.sejong.service.TrackJudgeService;
import kr.ac.sejong.service.TrackRuleService;
import kr.ac.sejong.web.dto.CustomUserDetails;
import kr.ac.sejong.web.dto.excel.ReportCardExcelDto;
import kr.ac.sejong.web.dto.trackjudge.JudgeLogDto;
import kr.ac.sejong.web.dto.trackjudge.TrackStatistic;
import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Log
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/trackJudge/*")
public class ApiTrackJudgeController {

    private final TrackJudgeService trackJudgeService;
    private final TrackRuleService trackRuleService;
    private final TrackCourseService trackCourseService;
    private final JudgeLogService judgeLogService;

    @PostMapping("one")
    public TrackStatistic trackJudgeOne(@RequestParam("univId") Long univId,
                                        @RequestParam("trackId") Long trackId,
                                        @RequestParam("degreeId") Long degreeId,
                                        HttpSession httpSession) throws Exception{
        CustomUserDetails userModel = (CustomUserDetails) httpSession.getAttribute("userModel");

        /** 판정 **/
        List<ReportCardExcelDto> transcriptExcel = (List<ReportCardExcelDto>) httpSession.getAttribute("transcript");

        Map<TrackCourse.Type, Rule> trackRule = trackRuleService.findByTrackIdAndDegreeId(trackId, degreeId);
        List<TrackCourse> standardCourses = trackCourseService.findByTrackId(trackId);
        List<Course> transcriptCourses = transcriptExcel.stream()
                .map(ReportCardExcelDto
                        ::toCourseEntity)
                .collect(Collectors.toList());
        TrackStatistic t = trackJudgeService.trackJudgeOne(trackRule, transcriptCourses, standardCourses);

        /** 판정 기록 **/
        JudgeLogDto judgeLogDto = JudgeLogDto.builder()
                .percent(t.getPercent())
//                .pnp(t.)
                .userId(userModel.getUserId())
                .trackId(trackId)
                .build();

        judgeLogService.updateOrInsert(judgeLogDto);

        return t;
    }

    /*
    @PostMapping("all")
    public List<Track> trackJudgeAll(@RequestParam("univId") Long univId,
                                          @RequestParam("trackId") Long trackId,
                                          @RequestParam("degreeId") Long degreeId,
                                          HttpSession httpSession) {

        List<ReportCardExcelDto> reportCardSubjects = (List<ReportCardExcelDto>) httpSession.getAttribute("transcript");

        List<Course> transcriptTrack = reportCardSubjects.stream()
                .map(ReportCardExcelDto::toCourseEntity)
                .collect(Collectors.toList());

        Map<Track, List<TrackCourse>> standardTracks = trackCourseService.findByUnivId(univId);
        Map<TrackCourse.Type, Rule> trackRule = trackRuleService.findByTrackIdAndDegreeId(trackId, degreeId);

        return trackJudgeService.trackJudge(trackRule, transcriptTrack, standardTracks);
    }
    */
}