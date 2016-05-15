package cn.evilcoder.fantasyblog4j.dao;

import cn.evilcoder.fantasyblog4j.domain.Note;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/5/15
 * Time: 11:19
 */
public interface NoteDao {
  public long insert(Note note);
  public ArrayList<Note> listNotes(@Param("uid") long uid, @Param("fromTimestamp") long fromTimestamp, @Param("toTimestamp") long toTimestamp);
  public int updateNoteState(@Param("nid") long nid,@Param("uid") long uid,@Param("state") int state);
}
