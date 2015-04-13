package org.linuxkernel.wechat.controller;

import javax.servlet.http.HttpSession;

import org.linuxkernel.wechat.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

@Scope("prototype")
@Controller
public class UserController extends BaseController {
   @Autowired(required = true)
   private UserService userService;


   @RequestMapping(value = "/addUser", method = RequestMethod.POST)
   public String addUser(Model model, HttpSession session) {

      return "redirect:/";
   }

   @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
   public String deleteUser(Model model, HttpSession session) {

      return "redirect:/";
   }

   @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
   public String updateUser(Model model, HttpSession session) {

      return "redirect:/";
   }

   @RequestMapping(value = "/listUser", method = RequestMethod.GET)
   public void listUsers(Model model, HttpSession session) {

      Gson gson = new Gson();
      String users = gson.toJson(userService.listUsers());
      outputText(users);
      return;
   }

   @RequestMapping(value = "/queryUser", method = RequestMethod.POST)
   public String queryUser(Model model, HttpSession session) {

      return "redirect:/";
   }

   @RequestMapping(value = "/basic", method = RequestMethod.GET)
   public String basicRecord(Model model, HttpSession session) {
      return "basic";
   }

   @RequestMapping(value = "/statistics", method = RequestMethod.GET)
   public String getStatistic(Model model, HttpSession session) {
      return "statistics";
   }

   @RequestMapping(value = "/research", method = RequestMethod.GET)
   public String research(Model model, HttpSession session) {
      return "research";
   }

   @RequestMapping(value = "/check", method = RequestMethod.GET)
   public String check(Model model, HttpSession session) {
      return "check";
   }

}
