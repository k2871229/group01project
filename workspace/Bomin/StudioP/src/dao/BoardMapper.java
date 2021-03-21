package dao;

import java.util.List;

import dto.Board;

public interface BoardMapper {

	public List<Board> selectBoardList() throws Exception; // 게시글 전체 조회
	public List<Board> selectBoardList(Board board) throws Exception; // 게시글 전체 조회 조건 포함
	public Board selectBoardOne(Board board) throws Exception; // 게시글 1개 조회
	public void insertBoard(Board board) throws Exception; // 등록
	public void updateBoard(Board board) throws Exception; // 수정
	public void deleteBoard(Board board) throws Exception; // 삭제
	
}
	