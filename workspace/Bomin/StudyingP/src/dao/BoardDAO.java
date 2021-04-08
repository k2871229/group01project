package dao;

import java.util.List;

import dto.BoardDTO;

public interface BoardDAO {

	// 개시된 게시글 전체조회
	public List<BoardDTO> selectBrd(BoardDTO boardDto);
	// 삭제 포함 게시글 전체조회
	public List<BoardDTO> selectBrdAll(BoardDTO boardDto);
	// 삭제된 게시글 조회
	public List<BoardDTO> selectBrdDel(BoardDTO boardDto);
	
	// 게시글 조회 (글번호)
	public BoardDTO selectBrdCode(BoardDTO boardDto);
	// 게시글 조회 (글제목)
	public BoardDTO selectBrdTitle(BoardDTO boardDto);
	// 게시글 조회 (내용)
	public List<BoardDTO> selectBrdContent(BoardDTO boardDto);
	// 게시글 조회 (강의번호)
	public List<BoardDTO> selectBrdClsCode(BoardDTO boardDto);
	// 게시글 조회 (말머리)
	public List<BoardDTO> selectBrdCategory(BoardDTO boardDto);
	// 게시글 조회 (회원번호)
	public List<BoardDTO> selectBrdMemCode(BoardDTO boardDto);
	// 게시글 조회 (평점)
	public List<BoardDTO> selectBrdRating(BoardDTO boardDto);
	// 게시글 조회 (댓글포함)
	public List<BoardDTO> selectBrdCmt(BoardDTO boardDto);
	
	// 게시글 작성
	public void insertBrd(BoardDTO boardDto);
	// 게시글 수정
	public void updateBrd(BoardDTO boardDto);
	// 게시글 삭제
	public void deleteBrd(BoardDTO boardDto);
	
}