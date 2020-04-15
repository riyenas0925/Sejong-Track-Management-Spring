package kr.ac.sejong.web.dto.trackjudge;

import kr.ac.sejong.domain.member.Member;
import kr.ac.sejong.domain.track.Track;
import kr.ac.sejong.domain.trackJudge.JudgeLog.JudgeLog;
import kr.ac.sejong.domain.trackJudge.TrackJudge;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class JudgeLogDto {

    private Double percent;
    private TrackJudge.PNP pnp;
    private String userId;
    private Long trackId;

    public JudgeLog toEntity(Member member, Track track){
        return JudgeLog.builder()
                .member(member)
                .track(track)
                .percent(percent)
                .pnp(pnp)
                .build();
    }

    public JudgeLogDto(JudgeLog judgeLog){
        this.percent = judgeLog.getPercent();
        this.pnp = judgeLog.getPnp();
        this.userId = judgeLog.getMember().getUserId();
        this.trackId = judgeLog.getTrack().getId();
    }
    @Builder
    public JudgeLogDto(Double percent, TrackJudge.PNP pnp, String userId, Long trackId) {
        this.percent = percent;
        this.pnp = pnp;
        this.userId=userId;
        this.trackId = trackId;
    }
}
