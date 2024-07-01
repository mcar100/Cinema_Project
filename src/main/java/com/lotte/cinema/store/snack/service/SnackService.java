package com.lotte.cinema.store.snack.service;

import java.util.List;

import com.lotte.cinema.store.snack.dto.SnackListRespDto;

public interface SnackService {

	List<SnackListRespDto> findAll();
}
