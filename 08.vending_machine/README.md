# ☕ Vending Machine System for Basys3 FPGA

> 4-digit 7-segment display 기반 **잔액 표시 + LED 애니메이션 + CIRCLE 출력 애니메이션**을 지원하는  
> **Verilog HDL 기반 자판기 시스템**  
> ⛳ Basys3 FPGA 보드 활용 | 버튼 입력 기반 FSM 제어

---

## 📌 프로젝트 개요

본 프로젝트는 **Basys3 (100MHz)** FPGA 보드와 4자리 7-Segment Display, 버튼, LED를 이용하여 아래 기능을 구현합니다:

1. **금액 투입 (100원/500원)**
2. **잔액 표시 및 반환 기능**
3. **구매 조건 충족 시 LED 애니메이션 + FND CIRCLE 출력**
4. **7-Segment를 활용한 실시간 잔액 표시**

---

## 🔧 시스템 구성

### ✅ 입력 (버튼)
| 버튼 | 기능 |
|------|------|
| `btnU` | 시스템 리셋 |
| `btnL` | 100원 투입 |
| `btnC` | 500원 투입 |
| `btnR` | 커피 구매 (300원 필요) |
| `btnD` | 잔액 반환 |

### ✅ 출력
| 출력 | 설명 |
|------|------|
| `FND[3:0]`, `SEG[6:0]` | 현재 잔액 또는 구매 시 CIRCLE 애니메이션 표시 |
| `LED[6:0]` | 커피 구매 시 LED 점등 애니메이션 (0.5초 간격 반복) |

---

## 🧠 FSM 설계

**vending_fsm.v** 모듈을 통해 금액 상태와 동작을 상태기계(FSM)로 구성했습니다.

| 상태 | 설명 |
|------|------|
| `IDLE` | 초기 상태 (잔액 0) |
| `+100`, `+500` | 금액 투입 후 누적 |
| `BUY` | 300원 이상 시 구매 처리 후 차감 |
| `REFUND` | 잔액 반환 후 초기화 |

> 버튼은 모두 디바운싱 및 원샷 처리하여 안정적인 동작 보장

---

## 🖥 모듈 요약

### ▶ `vending_fsm.v`
- 잔액 누적 및 조건에 따른 구매/반환 FSM
- balance 신호 출력 (BCD 변환 전 14bit)

### ▶ `fnd_controller.v`
- 4자리 FND의 자리 선택 및 숫자 또는 애니메이션 표시
- 구매 시 CIRCLE 애니메이션 1회 실행 후 숫자 모드 복귀

### ▶ `led_coffee_effect.v`
- 커피 구매 후 7개 LED를 0.5초 간격으로 순차 점등하는 애니메이션
- 애니메이션 5초 후 종료

### ▶ `button_debouncer.v`, `button_onepulse.v`
- 버튼 입력 안정화 및 1클럭 펄스 생성

---

## 🔄 애니메이션 상세 (CIRCLE)

`FND`의 각 자리별 특정 segment만을 순서대로 점등하여 **시계방향 회전 애니메이션** 구현:

| Step | 위치 |
|------|------|
| 0 | AN3.A |
| 1 | AN2.A |
| 2 | AN1.A |
| 3 | AN0.A |
| 4 | AN0.B |
| 5 | AN0.C |
| 6 | AN0.D |
| 7 | AN1.D |
| 8 | AN2.D |
| 9 | AN3.D |
| 10 | AN3.E |
| 11 | AN3.F |
| ... | 반복 |

> 각 step은 약 0.5초 간격으로 진행되어 6초 동안 완주함

---

## 📁 주요 파일 구성

```
vending_machine/
├── vending_machine_top.v     # 전체 시스템 통합 TOP
├── vending_fsm.v             # 잔액 상태 관리 FSM
├── fnd_controller.v          # 7-Segment 출력 제어
├── led_coffee_effect.v       # LED 점등 애니메이션
├── button_debouncer.v        # 디바운스 처리
├── button_onepulse.v         # 원샷 처리
└── README.md                 # 설명 문서
```

---

## 🧮 하드웨어 개념 요약

| 항목 | 설명 |
|------|------|
| **디바운싱** | 버튼 입력의 튐 현상 제거 |
| **원샷 회로** | 1클럭만 high 유지되는 펄스 생성 |
| **FSM** | 각 상태 및 전이 조건에 따른 동작 제어 |
| **BCD 변환** | 14bit balance를 4자리 10진수로 변환 |
| **Segment 제어** | 각 자리수별 AN + SEG 조합으로 출력 |

---

## 💻 개발 환경

| 항목 | 내용 |
|------|------|
| **개발 보드** | Digilent Basys3 (Xilinx Artix-7 XC7A35T) |
| **개발 툴** | Xilinx Vivado 2021.1 |
| **HDL** | Verilog |
| **시뮬레이션 툴** | Vivado Simulator |
| **클럭 주파수** | 100MHz |
| **입출력 장치** | 스위치 버튼 (btnU~btnD), 7-Segment FND, LED |

---

## 📸 결과 영상

> 📽 [시연 영상 보러가기](https://youtu.be/ssTYbH39unI)

---
