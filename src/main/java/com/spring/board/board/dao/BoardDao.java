package com.spring.board.board.dao;

import com.spring.board.board.model.Board;

import java.util.List;

public interface BoardDao {
    List<Board> selectBoardList();

    Board selectBoardDetail(int index);

    int insertBoard(Board board);

    int updateBoard(Board board);

    int deleteBoard(int index);
}
