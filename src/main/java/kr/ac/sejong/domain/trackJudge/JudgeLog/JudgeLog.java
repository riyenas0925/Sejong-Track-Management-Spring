package kr.ac.sejong.domain.trackJudge.JudgeLog;

import kr.ac.sejong.domain.member.Member;
import kr.ac.sejong.domain.track.Track;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Getter
@Table(name = "judge_log")
@NoArgsConstructor
@Entity
public class JudgeLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name="memberId")
    private Member member;

    @ManyToOne
    @JoinColumn(name="trackId")
    private Track track;

    public void update(Track track){
        this.track = track;
    }

    @Builder
    public JudgeLog(Member member, Track track){
        this.member = member;
        this.track = track;
    }
}