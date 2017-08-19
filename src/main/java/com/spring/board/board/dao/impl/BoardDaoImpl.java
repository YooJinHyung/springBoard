package com.spring.board.board.dao.impl;

import com.spring.board.board.dao.BoardDao;
import com.spring.board.board.model.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("BoardDao")
public class BoardDaoImpl implements BoardDao {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Board> selectBoardList() {
        return sqlSession.selectList("com.spring.board.board.dao.BoardDao.selectBoardList");
    }

    @Override
    public int insertBoard(Board board) {
        return sqlSession.insert("com.spring.board.board.dao.BoardDao.insertBoard", board);
    }

    @Override
    public Board selectBoardDetail(int index) {
        return sqlSession.selectOne("com.spring.board.board.dao.BoardDao.selectBoardDetail", index);
    }

    @Override
    public int updateBoard(Board board) {
        return sqlSession.update("com.spring.board.board.dao.BoardDao.updateBoard", board);
    }

    @Override
    public int deleteBoard(int index) {
        return sqlSession.delete("com.spring.board.board.dao.BoardDao.deleteBoard", index);
    }

}
