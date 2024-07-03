package com.lotte.cinema.store.snack.service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.lotte.cinema.store.snack.dto.SnackListRespDto;
import com.lotte.cinema.store.snack.dto.SnackRespDto;
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

	@Override
	public SnackRespDto findBySnackId(Long snackId) throws Exception {
		Snack snack = snackRepository.findById(snackId).orElseThrow(() -> new NoSuchElementException("가져올 상세 정보가 없어요"));
		SnackRespDto dto = convertToSnackDto(snack);
		log.info("dto = {}", dto);
		return dto;
	}

	public SnackListRespDto convertToSnackListDto(Snack snack) {

		return SnackListRespDto.builder().id(snack.getSnackId()).snackName(snack.getSnackName())
				.imageUUID(snack.getImageUUID()).items(snack.getItems()).price(snack.getPrice())
				.category(snack.getCategory().toString()).salesRate(snack.getSalesRate()).build();
	}

	public SnackRespDto convertToSnackDto(Snack snack) {

		return SnackRespDto.builder()
				.id(snack.getSnackId())
				.snackName(snack.getSnackName())
				.imageUUID(snack.getImageUUID())
				.items(snack.getItems())
				.price(snack.getPrice())
				.maxPurchase(snack.getMaxPurchase())
				.expiryDate(snack.getExpiryDate())
				.category(snack.getCategory().toString())
				.salesRate(snack.getSalesRate())
				.build();
	}

}
