//
//  ViewController.swift
//  ios04
//
//  Created by 朱博宇 on 2018/9/21.
//  Copyright © 2018年 朱博宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temp : Double = 0     //临时变量
    var temp1 : Int = 0       //退格时的临时变量
    var flag = 0        //等于号前边记录前一个运算符是什么
    var flag1 = 0      //加减乘除中记录前一个运算符是什么
    var FlagDot = 0    //小数点
    var CalFlag = 0    //判断前面是数字还是符号
    var sum : Double = 0     //最终得数
    var i = 0  //判断是否是第一次出现该运算符
    
    
    
    @IBOutlet weak var number: UITextField!
    
    @IBAction func Num1(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "1"
        }else{
            number.text = number.text!+"1"
        }
        CalFlag = 0
    }
    @IBAction func Nnm2(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "2"
        }else{
            number.text = number.text!+"2"
        }
        CalFlag = 0
    }
    @IBAction func Num3(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "3"
        }else{
            number.text = number.text!+"3"
        }
        CalFlag = 0
    }
    @IBAction func Sum4(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "4"
        }else{
            number.text = number.text!+"4"
        }
        CalFlag = 0
    }
    @IBAction func Sum5(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "5"
        }else{
            number.text = number.text!+"5"
        }
        CalFlag = 0
    }
    @IBAction func Sum6(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "6"
        }else{
            number.text = number.text!+"6"
        }
        CalFlag = 0
    }
    @IBAction func Num7(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "7"
        }else{
            number.text = number.text!+"7"
        }
        CalFlag = 0
    }
    @IBAction func Num8(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "8"
        }else{
            number.text = number.text!+"8"
        }
        CalFlag = 0
    }
    @IBAction func Num9(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "9"
        }else{
            number.text = number.text!+"9"
        }
        CalFlag = 0
    }
    @IBAction func Num0(_ sender: Any) {
        if CalFlag == 1 {
            number.text = "0"
        }else{
            number.text = number.text!+"0"
        }
        CalFlag = 0
    }
    
    @IBAction func equal(_ sender: Any) {
        FlagDot = 0
        switch flag {
        
        case 1:
            sum = temp + Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
            
        case 2:
            sum = temp - Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
            
        case 3:
            sum = temp * Double(number.text!)!
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
            
        case 4:
            if number.text=="0" {
                number.text = "\("错误")"
            }else{
                sum = temp / Double(number.text!)!
                number.text = "\(sum)"
                temp = sum
                CalFlag = 1
            }
        case 5:
            sum = pow(temp, Double(number.text!)!)
            number.text = "\(sum)"
            temp = sum
            CalFlag = 1
        default:
            break
        }
    }
    
    @IBAction func puls(_ sender: Any) {
        flag = 1
        CalFlag = 1
        FlagDot = 0
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {      //判断前一个预算符号是什么
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            case 5:
                temp = pow(temp, Double(number.text!)!)
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 1
    }
    
    @IBAction func subtract(_ sender: Any){
        flag = 2
        CalFlag = 1
        FlagDot = 0
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            case 5:
                temp = pow(temp, Double(number.text!)!)
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 2
    }
    
    @IBAction func ride(_ sender: Any) {
        flag = 3
        CalFlag = 1
        FlagDot = 0
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            case 5:
                temp = pow(temp, Double(number.text!)!)
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 3
    }
    
    @IBAction func divide(_ sender: Any) {
        flag = 4
        CalFlag = 1
        FlagDot = 0
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            case 5:
                temp = pow(temp, Double(number.text!)!)
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 4
    }
    
    @IBAction func power(_ sender: Any) {
        flag = 5
        CalFlag = 1
        FlagDot = 0
        if i == 0{
            temp = Double(number.text!)!
            i = 1
        }else{
            switch flag1 {
            case 1:
                temp += Double(number.text!)!
                break
            case 2:
                temp -= Double(number.text!)!
                break
            case 3:
                temp *= Double(number.text!)!
                break
            case 4:
                temp /= Double(number.text!)!
                break
            case 5:
                temp = pow(temp, Double(number.text!)!)
                break
            default:
                break
            }
        }
        number.text = "\(temp)"
        flag1 = 5
    }
    
    @IBAction func dot(_ sender: Any) {
        if FlagDot == 0{
            number.text = number.text!+"."
            FlagDot += 1
        }
    }
    
    @IBAction func sign(_ sender: Any) {
        temp = Double(number.text!)!
        if temp==0{
            number.text = "\(temp)"
        }else {
            temp = -1*temp
            number.text = "\(temp)"
        }
    }
    
    @IBAction func Delete(_ sender: Any) {     //归零
        number.text = "0"
        CalFlag = 1
        temp = 0
        i = 0
    }
    @IBAction func delete1(_ sender: Any) {   //推格
        if number.text == ""{
            number.text = ""
        }else if sum != 0{
            sum /= 10
            if sum >= 0{
                number.text = "\(sum)"
            }else{
                number.text = ""
            }
        }else if number.text != ""{
            temp1 = Int(number.text!)!
            temp1 /= 10
            if temp1 != 0{
                number.text = "\(temp1)"
            }else{
                number.text = ""
            }
        }
    }
    @IBOutlet weak var picture: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "狗", ofType: "gif")
        let newImage = UIImage(contentsOfFile: path!)
        picture.image = newImage
    }
}

