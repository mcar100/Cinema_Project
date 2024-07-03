package com.lotte.cinema.store.snack.service;

import java.util.List;

import com.lotte.cinema.store.snack.dto.SnackListRespDto;
import com.lotte.cinema.store.snack.dto.SnackRespDto;

public interface SnackService {

	List<SnackListRespDto> findAll();
	SnackRespDto findBySnackId(Long snackId) throws Exception;
}
