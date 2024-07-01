package com.lotte.cinema.store.snack.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lotte.cinema.store.snack.entity.Snack;
import com.lotte.cinema.store.snack.repository.SnackRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SnackServiceImpl implements SnackService {

	private final SnackRepository snackRepository;

	@Override
	public List<Snack> snackList() {
		// TODO Auto-generated method stub
		
		return snackRepository.findAll();
		
	}

}
