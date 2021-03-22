package dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class BoardDTO {
	// �� ��ȣ
	private int brd_num;
	// �� ����
	private String brd_title;
	// ��ȸ��
	private int brd_hit;
	// �ۼ���
	private Date brd_date;
	// �۳���
	private String brd_content;
	// ȸ�� ��ȣ
	private int mem_code;
	// ���� �ڵ�
	private int cls_code;
	// ���Ӹ�
	private int brd_category;
	// �� ���� ����
	private int brd_delete;
	// ���� ����
	private int brd_rating;
}
