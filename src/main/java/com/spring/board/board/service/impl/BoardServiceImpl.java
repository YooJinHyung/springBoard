package com.spring.board.board.service.impl;

import com.spring.board.board.dao.BoardDao;
import com.spring.board.board.model.Board;
import com.spring.board.board.service.BoardService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("boardService")
public class BoardServiceImpl implements BoardService {
    @Resource(name ="BoardDao")
    private BoardDao boardDao;

    @Override
    public List<Board> getBoardAllList(){
        return boardDao.selectBoardList();
    }

    @Override
    public int writeBoard(Board board){
        return boardDao.insertBoard(board);
    }

    @Override
    public Board getBoardDetail(int index){return boardDao.selectBoardDetail(index);}

    @Override
    public int updateBoard(Board board) {return boardDao.updateBoard(board);}

    @Override
    public int deleteBoard(int index) {return boardDao.deleteBoard(index);}
}
