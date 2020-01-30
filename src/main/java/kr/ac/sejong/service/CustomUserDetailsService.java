package kr.ac.sejong.service;

import kr.ac.sejong.domain.CustomUserDetails;
import kr.ac.sejong.domain.Member;
import kr.ac.sejong.domain.MemberRoleEnum;
import kr.ac.sejong.persistence.MemberRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    @Inject
    private MemberRepository repo;
    @Inject
    private PasswordEncoder passwordEncoder;

    @Transactional
    public String joinMember(Member m) {
        Member member = Member.builder()
                .id(m.getId())
                .password(passwordEncoder.encode(m.getPassword())) /*비밀번호 암호화*/
                .name(m.getName())
                .email(m.getEmail())
                .build();

        return repo.save(member).getId();
    }

    public UserDetails loadUserByUserId(String id) throws UsernameNotFoundException {
        /*id 일치하는 멤버 조회*/
        Optional<Member> memberEntityWrapper = repo.findById(id);
        /*만약 id가 없으면 에러 던지고 아니면 member에 담는다.*/
        Member member = memberEntityWrapper.orElseThrow(()-> new UsernameNotFoundException(id));

        List<GrantedAuthority> authorities = new ArrayList<>(); /*권한*/

        if (("admin").equals(id)) {
            authorities.add(new SimpleGrantedAuthority(MemberRoleEnum.ADMIN.toString()));
        } else {
            authorities.add(new SimpleGrantedAuthority(MemberRoleEnum.STUDENT.toString()));
        }

        return new CustomUserDetails(member.getId(), member.getPassword(), member.getName(),
                member.getEmail(), authorities);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return null;
    }
}