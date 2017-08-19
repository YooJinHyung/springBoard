package com.spring.board.board.service;

import com.spring.board.board.model.Board;

import java.util.List;

public interface BoardService {
    List<Board> getBoardAllList();

    Board getBoardDetail(int index);

    int writeBoard(Board board);

    int updateBoard(Board board);

    int deleteBoard(int index);
}
