# 🚀 Falcon 9–Style Two-Stage Rocket Flight Simulation (MATLAB)

This repository contains a **physics-based MATLAB simulation of a Falcon 9–style two-stage launch vehicle**. The simulation models the **full powered ascent of Stage 1, stage separation, and Stage 2 ignition**, tracking **velocity, altitude, acceleration, mass change, thrust, and drag** over time.

This project was built to demonstrate **rocket flight dynamics, numerical modeling, and aerospace system behavior using real governing equations**.

---

## 📌 Project Purpose

The goal of this project is to:
- Simulate **multi-stage rocket ascent**
- Apply **Newton’s 2nd Law to variable-mass systems**
- Model **thrust, gravity, and aerodynamic drag**
- Track **time-history of velocity, altitude, acceleration, and mass**
- Demonstrate how **staging dramatically improves final vehicle performance**

This project mirrors the **core structure of a Falcon 9 ascent profile** in a simplified 1D vertical flight model.

---

## Core Physics & Governing Equations

### 1. Thrust Force
The thrust force is computed using:

$$
F_T = \dot{m} \cdot v_e
$$

Where:
- $\dot{m}$ = propellant mass flow rate (kg/s)  
- $v_e$ = exhaust velocity (m/s)

---

### 2. Aerodynamic Drag Force
Drag opposing motion is modeled as:

$$
F_D = \frac{1}{2}\rho C_D A v^2
$$

Where:
- $\rho$ = air density (kg/m³)  
- $C_D$ = drag coefficient  
- $A$ = reference area (m²)  
- $v$ = rocket velocity (m/s)

---

### 3. Gravitational Force (Weight)
The gravitational force acting on the rocket is:

$$
W = m g
$$

Where:
- $m$ = instantaneous rocket mass (kg)  
- $g$ = gravitational acceleration (9.81 m/s²)

---

### 4. Net Force on the Rocket
The total force acting on the rocket is:

$$
\sum F = F_T - F_D - W
$$

---

### 5. Acceleration (Newton’s Second Law)
Rocket acceleration is computed using:

$$
a = \frac{\sum F}{m}
$$

---

### 6. Velocity Numerical Integration
Velocity is updated using forward Euler integration:

$$
v_{t+1} = v_t + a \Delta t
$$

---

### 7. Altitude Numerical Integration
Altitude is updated by integrating velocity:

$$
h_{t+1} = h_t + v \Delta t
$$

---

### 8. Mass Depletion Due to Fuel Burn
Rocket mass decreases as fuel is consumed:

$$
m_{t+1} = m_t - \dot{m}\Delta t
$$

---

### 9. Stage Separation Logic
After Stage 1 burnout, the dry mass of Stage 1 is dropped:

$$
m \leftarrow m - m_{stage1,structure}
$$

Thrust and mass flow rate are then reset for **Stage 2 ignition**.

---

These equations are solved **iteratively at every time step** to propagate:
- Mass
- Thrust
- Drag
- Acceleration
- Velocity
- Altitude  
through both Stage 1 and Stage 2 flight.
---

The simulation automatically generates:
- **Velocity vs Time**
- **Altitude vs Time**
- **Acceleration vs Time**
- **Mass vs Time**

Each plot clearly shows:
- Stage 1 powered ascent
- Stage separation point
- Stage 2 ignition and continuation

---

## 🎯 What This Project Demonstrates

✅ Multi-stage rocket dynamics  
✅ Variable mass systems  
✅ Thrust-based propulsion modeling  
✅ Aerodynamic drag effects  
✅ Time-marching numerical integration  
✅ MATLAB engineering visualization  
✅ Real aerospace physics implementation  

---
Graphs: 
##
<img width="379" height="292" alt="Screenshot 2025-12-09 155455" src="https://github.com/user-attachments/assets/cd836323-0535-407a-b040-bd9546784ecf" />

<img width="379" height="292" alt="Screenshot 2025-12-09 155506" src="https://github.com/user-attachments/assets/76bf3c45-1879-4268-8cc4-207acdfb2c19" />

<img width="379" height="292" alt="Screenshot 2025-12-09 155804" src="https://github.com/user-attachments/assets/3b7948f0-ce89-499b-b788-75d6a4d75c98" />

<img width="379" height="292" alt="Screenshot 2025-12-09 155519" src="https://github.com/user-attachments/assets/0a7ab4ed-f7cd-4f6f-9a6c-5d96b85c9fc1" />

## Why Staging Works (Engineering Insight)

Staging allows the rocket to:
- Drop **dead structural mass**
- Increase **thrust-to-weight ratio**
- Improve **final burnout velocity**
- Dramatically improve **orbital insertion capability**

This simulation directly visualizes these principles.

---

##  Future Improvements

- Add standard atmosphere model (density vs altitude)
- Implement Mach-dependent drag coefficient
- Add gravity turn and pitch program
- Include landing burn and reentry drag
- Monte Carlo dispersion analysis
- Orbital insertion modeling
