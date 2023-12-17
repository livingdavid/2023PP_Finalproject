package com.example.playlists;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PlayDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertPlay(PlayVO vo){
        int result = sqlSession.insert("Play.insertPlay", vo);
        return result;
    }
    public int deletePlay(int seq) {
        int result = sqlSession.delete("Play.deletePlay", seq);
        return result;
    }
    public int updatePlay(PlayVO vo) {
            int result = sqlSession.update("Play.updatePlay", vo);
            return result;
    }
    public PlayVO getPlay(int seq){
        PlayVO one = sqlSession.selectOne("Play.getPlay", seq);
        return one;
    }

    public List<PlayVO> getPlayList(){
        List<PlayVO> list = sqlSession.selectList("Play.getPlayList");
        return list;
    }
}
