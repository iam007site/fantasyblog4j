package cn.evilcoder.fantasyblog4j.controller;

import cn.evilcoder.fantasyblog4j.commons.Common;
import cn.evilcoder.fantasyblog4j.commons.LoginSession;
import cn.evilcoder.fantasyblog4j.domain.Note;
import cn.evilcoder.fantasyblog4j.service.NoteService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 * User: evilcoder
 * Date: 2016/5/15
 * Time: 11:12
 */
@Controller
public class NoteController {

  private final Logger logger = LoggerFactory.getLogger(getClass());

  @Autowired
  private NoteService noteService;

  @ResponseBody
  @RequestMapping(value = "/u/note",method = RequestMethod.POST,params = {"content"})
  public Object addNote(HttpServletRequest request,
      @RequestParam(value = "content") String content){
    Note note = new Note();
    note.setUid((long)request.getSession().getAttribute(LoginSession.UID_KEY));
    note.setUsername(request.getSession().getAttribute(LoginSession.USERNAME_KEY).toString());
    note.setContent(content);
    note.setCtime(new Date());
    note.setMtime(note.getCtime());
    note.setState(Common.NoteState.PUBLIC);
    long nid = noteService.addNote(note);
    if(nid>0L){
      return true;
    }else{
      return false;
    }
  }

  @RequestMapping(value = "/note/{uid}",method = RequestMethod.GET)
  public String listNotes(HttpServletRequest request,
                          @PathVariable(value = "uid") long uid,
                          @RequestParam(value = "from",required = false) String from,
                          @RequestParam(value = "to",required = false) String to) {
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    long fromTimestamp = 0L;
    long toTimestamp = 0L;
    try {
      fromTimestamp = StringUtils.isEmpty(from)?0L:format.parse(from).getTime();
      toTimestamp = StringUtils.isEmpty(to)?0L:format.parse(to).getTime();
    } catch (ParseException e) {
      logger.error("time format error with {},{}",from,to);
    }
    ArrayList<Note> notes = noteService.listNotes(uid,fromTimestamp,toTimestamp);
    request.setAttribute("notes",notes);
    request.setAttribute("show",request.getSession().getAttribute(LoginSession.UID_KEY) != null);
    return "note/listNote";
  }
}
