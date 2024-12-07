package com.klu.jfsd.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.klu.jfsd.service.FileService;

@RestController
@RequestMapping("/admin")
public class FileController {

    @Autowired
    private FileService fileService;

    @PostMapping("/upload")
    public ResponseEntity<String> uploadFile(@RequestParam("file") MultipartFile file) {
        try {
            fileService.saveFile(file);
            
            // Return an HTML response with the success message and a link to the admin home page
            String htmlResponse = "<html><body>"
                    + "<h1>File uploaded successfully!</h1>"
                    + "<a href='/adminhome' style='font-size: 1.2em; color: blue;'>Go to Admin Home</a>"
                    + "</body></html>";
            
            return ResponseEntity.status(HttpStatus.OK)
                    .header(HttpHeaders.CONTENT_TYPE, "text/html")
                    .body(htmlResponse);
        } catch (Exception e) {
            String errorHtml = "<html><body>"
                    + "<h1>File upload failed.</h1>"
                    + "</body></html>";
            
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .header(HttpHeaders.CONTENT_TYPE, "text/html")
                    .body(errorHtml);
        }
    }

}

