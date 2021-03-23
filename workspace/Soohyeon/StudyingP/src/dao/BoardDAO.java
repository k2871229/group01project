package dao;

import java.util.List;

import dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> selectBoardList() throws Exception; // 게시글 전체 조회
	public List<BoardDTO> selectBoardList(BoardDTO boardDto) throws Exception; // 게시글 전체 조회 조건 포함
	public BoardDTO selectBoardOne(BoardDTO boardDto) throws Exception; // 게시글 1개 조회
	public void insertBoard(BoardDTO boarDto) throws Exception; // 등록
	public void updateBoard(BoardDTO boardDto) throws Exception; // 수정
	public void deleteBoard(BoardDTO boardDto) throws Exception; // 삭제
	
}
	