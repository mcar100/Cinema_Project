package com.lotte.cinema.store.snack.service;

import org.springframework.stereotype.Service;

import com.lotte.cinema.store.snack.repository.SnackRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SnackServiceImpl implements SnackService {

	private final SnackRepository snackRepository;

}
