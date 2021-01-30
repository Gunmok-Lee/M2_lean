package com.m2.M2_lean.vo;

public class stockVO {
  private int st_no;
  private String idt;
  private long market_cap;
  private int stock;

  public int getSt_no() {
    return st_no;
  }

  public void setSt_no(int st_no) {
    this.st_no = st_no;
  }

  public String getIdt() {
    return idt;
  }

  public void setIdt(String idt) {
    this.idt = idt;
  }

  public long getMarket_cap() {
    return market_cap;
  }

  public void setMarket_cap(long market_cap) {
    this.market_cap = market_cap;
  }

  public int getStock() {
    return stock;
  }

  public void setStock(int stock) {
    this.stock = stock;
  }

  public long getValue() {
    return value;
  }

  public void setValue(long value) {
    this.value = value;
  }

  private long value;
}
