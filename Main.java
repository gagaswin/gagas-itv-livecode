package org.example;

import java.util.Arrays;

public class Main {
  public static void main(String[] args) {
    junctionNumber(5000);
  }

  static void junctionNumber(int maxIterate) {
    for (int i = 1; i <= maxIterate; i++) {
      String strI = Integer.toString(i);
      String[] split = strI.split("");
      System.out.println(Arrays.toString(split));

      for (var j : split) {
        System.out.println();
      }
    }
  }
}