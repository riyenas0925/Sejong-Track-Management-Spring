package kr.ac.sejong.controller;

import kr.ac.sejong.domain.trackAllVO;
import kr.ac.sejong.domain.trackVO;
import kr.ac.sejong.persistence.TrackAllDAO;
import kr.ac.sejong.persistence.UploadFormDAO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping("/trackAll/*")
public class TrackAllAjaxController {

    @Inject
    private TrackAllDAO trackAllDAO;

    @GetMapping("/selectUniv/{univNo}")
    public ResponseEntity<List<trackAllVO>> list(@PathVariable Integer univNo){

        ResponseEntity<List<trackAllVO>> entity = null;

        try {
            entity = new ResponseEntity<>(trackAllDAO.basicTrack(univNo), HttpStatus.OK);

        }catch (Exception e){
            e.printStackTrace();
            entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return entity;
    }
}
