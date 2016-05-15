package cn.evilcoder.fantasyblog4j.service.impl;

import cn.evilcoder.fantasyblog4j.dao.NoteDao;
import cn.evilcoder.fantasyblog4j.domain.Note;
import cn.evilcoder.fantasyblog4j.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * User: evilcoder
 * Date: 2016/5/15
 * Time: 11:18
 */
@Service
public class NoteServiceImpl implements NoteService {

  @Autowired
  private NoteDao noteDao;

  @Override
  public long addNote(Note note) {
    return noteDao.insert(note);
  }

  @Override
  public ArrayList<Note> listNotes(long uid, long fromTimestamp, long toTimestamp) {
    return noteDao.listNotes(uid,fromTimestamp,toTimestamp);
  }

  @Override
  public int updateNoteState(long nid, long uid, int state) {
    return noteDao.updateNoteState(nid,uid,state);
  }
}
