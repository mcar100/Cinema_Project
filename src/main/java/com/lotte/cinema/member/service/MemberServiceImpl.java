package com.lotte.cinema.member.service;

import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lotte.cinema.member.entity.Member;
import com.lotte.cinema.member.repository.MemberRepository;

import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

	private final MemberRepository memberRepository;

	// 회원 자동 생성 
	@Override
	public Member autoRegister() {
		
		Member member = Member.builder()
				.username(UUID.randomUUID().toString())
				.email("alsgml@gmail.com")
				.address("우리집")
				.build();
		
		return member;
	}

}
