package com.example.playlists;

import java.util.List;
public interface PlayService {
    public int insertPlay(PlayVO vo);
    public int deletePlay(int seq);
    public int updatePlay(PlayVO vo);
    public PlayVO getPlay (int seq);
    public List<PlayVO> getPlayList();
}
