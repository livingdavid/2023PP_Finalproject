package com.example.playlists;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/play")
public class PlayController {
    @Autowired
    PlayService playService;
    //private final BoardService boardService;

    // 생성자를 통해 BoardService 주입
    //@Autowired
    //public BoardController(BoardService boardService) {
        //this.boardService = boardService;
    //}

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String playlist(Model model){
        model.addAttribute("list", playService.getPlayList());
        return "list";
    }
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(PlayVO vo) {
        if (playService.insertPlay(vo) == 0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }
    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        PlayVO playVO = playService.getPlay(id);
        model.addAttribute("playVO", playVO);
        return "editform";
    }
        @RequestMapping(value = "/editok", method = RequestMethod.POST)
        public String editPostOk(PlayVO vo) {
            if (playService.updatePlay(vo) == 0)
                System.out.println("데이터 수정 실패 ");
            else
                System.out.println("데이터 수정 성공!!!");
            return "redirect:list";
        }
            @ RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
            public String deletePostOk(@PathVariable("id") int id) {
                if (playService.deletePlay(id) == 0)
                    System.out.println("데이터 삭제 실패 ");
                else
                    System.out.println("데이터 삭제 성공!!!");
                return "redirect:../list";
            }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable("id") int id, Model model) {
        PlayVO playVO = playService.getPlay(id);
        model.addAttribute("u", playVO);
        return "view";
    }
}
