//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Motoki Okayasu on 2023/08/27.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    //チップの金額ラベルを接続
    @IBOutlet private weak var tipLabel: UILabel!
    //合計金額のラベルを接続
    @IBOutlet private weak var totalBillLabel: UILabel!
   //合計金額のラベルを表示
    @IBOutlet weak var billTextField: UITextField!
    
    //キーボードタイプをdecimalPadに変換
    private func changeTheKeyboard() {
        billTextField.keyboardType = UIKeyboardType.decimalPad
    }
    
    // UITextFieldDelegateのメソッドを実装
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "." && billTextField.text?.contains(".") == true {
            return false
        }
        return true
    }

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //メソッドを実行してキーボードの種類をdecimalPadnに変更
        changeTheKeyboard()
        //textFieldにクリアボタンを実装
        billTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        
        // MARK: - 閉じるボタン
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        // スペーサー構築
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        // 閉じるボタン構築
        let closeButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action:#selector(closeButtonTapped))

        toolBar.items = [spacer, closeButton]
        billTextField.inputAccessoryView = toolBar
      
        //delegateを実装
        billTextField.delegate = self
        billTextField.placeholder = "0.00"
    }
    
    // MARK: - 閉じるボタン
       @objc  func closeButtonTapped() {
           self.view.endEditing(true)
       }
    
    //10％ボタンを押したら支払い金額の10%が表示される
    @IBAction func tenButton(_ sender: Any) {
        //textFieldの中身をDouble型に変換する
        let value = Double(billTextField.text ?? "") ?? 0
        //valueも小数点以下２桁を四捨五入する
        let roundedValue = round(value * 100) / 100
        //定数に10％のチップを計算した数字を入れる
        let tipCulculate = Double(value * 0.1)
        //round関数で小数点以下２桁を四捨五入する
        let roundedCulculate = round(tipCulculate * 100) / 100
        //tipLabelにtipCulculateを表示
        tipLabel.text = String(roundedCulculate)
        //合計金額を定数に入れる
        let finalBill = Double(roundedCulculate + roundedValue)
        //合計金額もroundする
        let roundedFinalBill = round(finalBill * 100) / 100
        //totalBillLabelにroundedFinalBillを代入
        totalBillLabel.text = String(roundedFinalBill)
    }
    
    @IBAction func fifteenButton(_ sender: Any) {
        //textFieldの中身をDouble型に変換する
        let value = Double(billTextField.text ?? "") ?? 0
        //valueも小数点以下２桁を四捨五入する
        let roundedValue = round(value * 100) / 100
        //定数に10％のチップを計算した数字を入れる
        let tipCulculate = Double(value * 0.15)
        //round関数で小数点以下２桁を四捨五入する
        let roundedCulculate = round(tipCulculate * 100) / 100
        //tipLabelにtipCulculateを表示
        tipLabel.text = String(roundedCulculate)
        //合計金額を定数に入れる
        let finalBill = Double(roundedCulculate + roundedValue)
        //合計金額もroundする
        let roundedFinalBill = round(finalBill * 100) / 100
        //totalBillLabelにroundedFinalBillを代入
        totalBillLabel.text = String(roundedFinalBill)
    }
    
    @IBAction func eighteenButton(_ sender: Any) {
        //textFieldの中身をDouble型に変換する
        let value = Double(billTextField.text ?? "") ?? 0
        //valueも小数点以下２桁を四捨五入する
        let roundedValue = round(value * 100) / 100
        //定数に10％のチップを計算した数字を入れる
        let tipCulculate = Double(value * 0.18)
        //round関数で小数点以下２桁を四捨五入する
        let roundedCulculate = round(tipCulculate * 100) / 100
        //tipLabelにtipCulculateを表示
        tipLabel.text = String(roundedCulculate)
        //合計金額を定数に入れる
        let finalBill = Double(roundedCulculate + roundedValue)
        //合計金額もroundする
        let roundedFinalBill = round(finalBill * 100) / 100
        //totalBillLabelにroundedFinalBillを代入
        totalBillLabel.text = String(roundedFinalBill)
    }
    
    @IBAction func twentyButton(_ sender: Any) {
        //textFieldの中身をDouble型に変換する
        let value = Double(billTextField.text ?? "") ?? 0
        //valueも小数点以下２桁を四捨五入する
        let roundedValue = round(value * 100) / 100
        //定数に10％のチップを計算した数字を入れる
        let tipCulculate = Double(value * 0.2)
        //round関数で小数点以下２桁を四捨五入する
        let roundedCulculate = round(tipCulculate * 100) / 100
        //tipLabelにtipCulculateを表示
        tipLabel.text = String(roundedCulculate)
        //合計金額を定数に入れる
        let finalBill = Double(roundedCulculate + roundedValue)
        //合計金額もroundする
        let roundedFinalBill = round(finalBill * 100) / 100
        //totalBillLabelにroundedFinalBillを代入
        totalBillLabel.text = String(roundedFinalBill)
    }
    
    @IBAction func twentyFiveButton(_ sender: Any) {
        //textFieldの中身をDouble型に変換する
        let value = Double(billTextField.text ?? "") ?? 0
        //valueも小数点以下２桁を四捨五入する
        let roundedValue = round(value * 100) / 100
        //定数に10％のチップを計算した数字を入れる
        let tipCulculate = Double(value * 0.25)
        //round関数で小数点以下２桁を四捨五入する
        let roundedCulculate = round(tipCulculate * 100) / 100
        //tipLabelにtipCulculateを表示
        tipLabel.text = String(roundedCulculate)
        //合計金額を定数に入れる
        let finalBill = Double(roundedCulculate + roundedValue)
        //合計金額もroundする
        let roundedFinalBill = round(finalBill * 100) / 100
        //totalBillLabelにroundedFinalBillを代入
        totalBillLabel.text = String(roundedFinalBill)
    }
    
}

