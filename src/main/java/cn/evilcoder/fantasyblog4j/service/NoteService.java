package cn.evilcoder.fantasyblog4j.service;

import cn.evilcoder.fantasyblog4j.domain.Note;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/5/15
 * Time: 11:13
 */

public interface NoteService {
  public long addNote(Note note);
  public ArrayList<Note> listNotes(long uid,long fromTimestamp,long toTimestamp);
  public int updateNoteState(long nid,long uid,int state);
}
