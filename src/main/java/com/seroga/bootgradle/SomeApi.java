package com.seroga.bootgradle;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SomeApi {

  @GetMapping("/1")
  public String one() {
    return "I am working1!";
  }
}
