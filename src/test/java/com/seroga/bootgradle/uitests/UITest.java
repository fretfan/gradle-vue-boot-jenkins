package com.seroga.bootgradle.uitests;

import static com.codeborne.selenide.Condition.text;
import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;

public class UITest {

//  @Test
//  @Tag("UItest")
  public void userCanLoginByUsername() {
    open("localhost:8081");
    $("#text-div").shouldHave(text("before"));
    $("#the-button").click();
    $("#text-div").shouldHave(text("after"));
  }

}
