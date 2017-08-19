package com.spring.board.board.controller;

import com.spring.board.board.model.Board;
import com.spring.board.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;

@Controller
public class BoardController {
    @Resource(name = "boardService")
    private BoardService boardService;

    @RequestMapping("/")
    public String redirectBoard() {
        return "redirect:/board";
    }

    @ResponseBody
    @GetMapping("/board/list")
    public List<Board> boards() {
        return boardService.getBoardAllList();
    }

    @RequestMapping(value = "/board")
    public ModelAndView openBoardList(@ModelAttribute Board board) {   //TODO modelAttribute, RequestParam, RequestBody -검색해보기!!!!!
        ModelAndView mv = new ModelAndView("/board/boardList");//대상이 되는 view 지정
        List<Board> list = boardService.getBoardAllList();
        mv.addObject("list", list);//넘겨줄 object 등록
        return mv;
    }

    @RequestMapping(value = "/board/detail")
    public ModelAndView openDetail(@RequestParam int index) {
        ModelAndView mv = new ModelAndView("/board/detail");
        Board board = boardService.getBoardDetail(index);
        mv.addObject("board", board);
        return mv;
    }

    @RequestMapping(value = "/board/write")
    public String writeBoard(Model model) {
        return "/board/write";
    }

    @PostMapping(value = "/board/insert")
    public String insert(@ModelAttribute Board board) throws Exception {
        board.setCreateId("dbwlsgud");// 작성자 설정
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        board.setCreateDay(sdf.format(calendar.getTime()));//작성일자 설정
        boardService.writeBoard(board);
        return "redirect:/board";
    }

    @RequestMapping(value = "/board/update")
    public String updateBoard(@ModelAttribute Board board) throws Exception {
        boardService.updateBoard(board);
        return "redirect:/board";
    }

    @RequestMapping(value = "/board/delete") //@RequetMapping(method=HttpMethod.Post)
    public String deleteBoard(@RequestParam int index) throws Exception {
        boardService.deleteBoard(index);
        return "redirect:/board";
    }
}
