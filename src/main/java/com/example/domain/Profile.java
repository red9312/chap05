package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Entity
@Table(name = "tbl_profile")
@EqualsAndHashCode(of = "fno")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Profile {
	
	@Id
	@TableGenerator(name="idGen", table="id_gen", pkColumnName="seq_name", valueColumnName="nextval",
						allocationSize=100, initialValue=1000)
	@GeneratedValue(strategy = GenerationType.TABLE, generator="idGen")
	private Long fno;
	private String fname;
	private boolean curr;
	
}
