package com.example.playlists;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PlayServiceImpl implements PlayService {

    @Autowired
    PlayDAO playDAO;
    @Override
    public int insertPlay(PlayVO vo) {
        return playDAO.insertPlay(vo);
    }
        @Override
        public int deletePlay(int seq) {
            return playDAO.deletePlay(seq);
        }
        @Override
        public int updatePlay(PlayVO vo) {
        return playDAO.updatePlay(vo);
        }
        @Override
        public PlayVO getPlay(int seq) {
            return playDAO.getPlay(seq);
        }
        @Override
            public List<PlayVO> getPlayList() {
            return playDAO.getPlayList();
        }
}
