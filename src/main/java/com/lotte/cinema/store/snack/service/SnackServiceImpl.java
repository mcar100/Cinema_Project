package com.lotte.cinema.store.snack.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.lotte.cinema.store.snack.dto.SnackListRespDto;
import com.lotte.cinema.store.snack.entity.Snack;
import com.lotte.cinema.store.snack.repository.SnackRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class SnackServiceImpl implements SnackService {

	private final SnackRepository snackRepository;
	
	@Override
	public List<SnackListRespDto> findAll() {

	
		List<Snack> snackList = snackRepository.findAll();
		log.info("snackList = {}", snackList);

		return snackList.stream().map(this::convertToSnackListDto).collect(Collectors.toList());
	}

	public SnackListRespDto convertToSnackListDto(Snack snack) {
		
		return SnackListRespDto.builder().id(snack.getSnackId())
		.snackName(snack.getSnackName())
		.imageUUID(snack.getImageUUID())
		.items(snack.getItems())
		.price(snack.getPrice())
		.category(snack.getCategory().toString())
		.salesRate(snack.getSalesRate()).build();
		
	}

}
