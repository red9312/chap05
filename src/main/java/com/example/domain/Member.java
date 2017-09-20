package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Entity
@Table(name="tbl_members")
@EqualsAndHashCode(of="id")
public class Member {
	
	@Id
	private String id;
	private String pw;
	private String name;
	
}
