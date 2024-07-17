package com.lotte.cinema.member.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lotte.cinema.member.entity.Member;

public interface MemberRepository extends JpaRepository<Member, Long> {

}
