package org.judy.store.dto;

import org.judy.store.domain.MenuTopping;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MenuToppingDTO {

	private Integer mno,tno;
}
