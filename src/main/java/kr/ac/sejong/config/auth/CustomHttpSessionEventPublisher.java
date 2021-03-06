package kr.ac.sejong.config.auth;

import kr.ac.sejong.domain.member.Member;
import kr.ac.sejong.domain.member.MemberRepository;
import kr.ac.sejong.web.dto.CustomUserDetails;
import lombok.extern.java.Log;
import org.springframework.context.ApplicationContext;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.stereotype.Component;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

/**
 * 세션만료(이벤트)되면 이 리스너로 진입....
 * SessionDestroyedEvent를 상속받으면 seurity 로그인했던
 * 사용자 정보를 모두 담아놓고 있는다( 각각의 SecurityContext )
 */
@Component
@Log
public class CustomHttpSessionEventPublisher extends HttpSessionEventPublisher {

    @Inject
    MemberRepository memberRepository;

    @Override
    public void sessionCreated(HttpSessionEvent event) {

    }

    @Override
    public void sessionDestroyed(HttpSessionEvent event) {    //문제점 : timeout에 의한 로그아웃이 자동기록이 안됨.
        // session
        HttpSession session = event.getSession();

        // spring web application context
        ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(session.getServletContext());

        // security context
        SecurityContext sc = (SecurityContext) session
                .getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);

        if (sc != null) {
            // authentication
            Authentication auth = sc.getAuthentication();

            String user_id = ((CustomUserDetails) auth.getPrincipal()).getUserId();
            Member member = memberRepository.findByUserId(user_id).get();
            member.updateLogoutTime();
            memberRepository.save(member);
        }
    }
}