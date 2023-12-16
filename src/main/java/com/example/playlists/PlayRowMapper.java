package com.example.playlists;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PlayRowMapper implements RowMapper<PlayVO> {
    @Override
    public PlayVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        PlayVO vo = new PlayVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString ("title"));
        vo.setWriter(rs.getString ("writer"));
        vo.setGenre(rs.getString ("genre"));
        vo.setSonglist(rs.getString("songlist"));
        vo.setSongcount(rs.getInt("songcount"));
        vo.setImg(rs.getString("img"));
        vo.setPlaytime(rs.getString("playtime"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}
