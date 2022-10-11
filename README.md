# UpCounter
Vivado 2020.1에서 Verilog를 이용한 UpCounter 기능 구현 코드

## 1. 동작원리  
Basys 3의 Internal clock 100MHz를 이용하여 0.1초마다 1씩 증가하는 수를 FND에 출력하는 코드

## 2. RTL Analysis
### [FND_Digit Part]  
2-1-1) ClockDivider_Digit
![ClockDivider_Digit RTL](https://user-images.githubusercontent.com/113006133/195026254-e4bf0467-704c-48f0-a988-cd32768568d7.JPG)

2-1-2) Counter_FND
![Counter_FND RTL](https://user-images.githubusercontent.com/113006133/195030820-b3718252-2a6e-48c2-90a8-eefa7918e992.JPG)

2-1-3) Decoder_2x4
![Decoder_2x4 RTL](https://user-images.githubusercontent.com/113006133/195031156-bb3db2f1-d365-4170-b074-f628b920a153.JPG)
  
### [FND_Font Part]
2-2-1) ClockDivider_Data
![ClockDivider_Data RTL](https://user-images.githubusercontent.com/113006133/195031251-50f89bf8-6378-44b9-862f-ec16330fb891.JPG)

2-2-2) Counter_Data
![Counter_Data RTL](https://user-images.githubusercontent.com/113006133/195031322-3983aff1-130e-4a0a-a560-7e3dfe826c71.JPG)

2-2-3) digit_Divider
![digit_Divider RTL](https://user-images.githubusercontent.com/113006133/195031392-74f59a66-fc7b-4d0b-8a63-d10f74993526.JPG)

2-2-4) MUX_4x1
![MUX_4x1](https://user-images.githubusercontent.com/113006133/195031463-24c6c131-1a23-468c-ab53-6f509265f31a.JPG)

2-2-5) BCDToFND_Decoder
![BCDToFND_Decoder RTL](https://user-images.githubusercontent.com/113006133/195031512-edb1aa50-4061-48ce-b50b-2943aa6bf916.JPG)

### [Total UpCounter]
![UpCounter RTL](https://user-images.githubusercontent.com/113006133/195031572-8237ccaf-03a7-4823-9157-f9c84d92c1c8.JPG)

## 3. 동작 영상
https://user-images.githubusercontent.com/113006133/195053916-3d9bc43f-3ba5-4a9f-8acf-644cb8d0268c.mp4