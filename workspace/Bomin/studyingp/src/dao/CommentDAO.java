package dao;

import java.util.List;

import dto.CommentDTO;

public interface CommentDAO {

	// 댓글 조회(회원코드)
	public List<CommentDTO> selectCmtInst(CommentDTO commentDto);
	// 댓글 등록
	public CommentDTO insertCmt(CommentDTO commentDto);
	// 댓글 수정
	public CommentDTO updateCmt(CommentDTO commentDto);
	// 댓글 삭제
	public CommentDTO deleteCmt(CommentDTO commentDto);
	
	
}