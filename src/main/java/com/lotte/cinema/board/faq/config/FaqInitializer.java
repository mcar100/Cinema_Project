package com.lotte.cinema.board.faq.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import com.lotte.cinema.board.faq.entity.FaqCategory;
import com.lotte.cinema.board.faq.repository.FaqCategoryRepository;

@Component
public class FaqInitializer implements  ApplicationRunner {

	@Autowired
	private  FaqCategoryRepository faqCategoryRepository;
	
    @Override
    public void run(ApplicationArguments args) throws Exception {
        // 카테고리 생성
//        FaqCategory generalCategory1 = new FaqCategory();
//        generalCategory1.setName("영화관 이용");
//        FaqCategory generalCategory2 = new FaqCategory();
//        generalCategory2.setName("스페셜관");
//        FaqCategory generalCategory3 = new FaqCategory();
//        generalCategory3.setName("L.POINT");
//        FaqCategory generalCategory4 = new FaqCategory();
//        generalCategory4.setName("회원");
//        FaqCategory generalCategory5 = new FaqCategory();
//        generalCategory5.setName("멤버십");
//        FaqCategory generalCategory6 = new FaqCategory();
//        generalCategory6.setName("온라인");
//        FaqCategory generalCategory7 = new FaqCategory();
//        generalCategory7.setName("할인혜택");
//        FaqCategory generalCategory8 = new FaqCategory();
//        generalCategory8.setName("관람권");
//        FaqCategory generalCategory9 = new FaqCategory();
//        generalCategory9.setName("스토어");
//        FaqCategory generalCategory10 = new FaqCategory();
//        generalCategory10.setName("롯시클럽");
//        faqCategoryRepository.save(generalCategory1);
//        faqCategoryRepository.save(generalCategory2);
//        faqCategoryRepository.save(generalCategory3);
//        faqCategoryRepository.save(generalCategory4);
//        faqCategoryRepository.save(generalCategory5);
//        faqCategoryRepository.save(generalCategory6);
//        faqCategoryRepository.save(generalCategory7);
//        faqCategoryRepository.save(generalCategory8);
//        faqCategoryRepository.save(generalCategory9);
//        faqCategoryRepository.save(generalCategory10);
    }

}
