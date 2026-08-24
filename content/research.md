---
title: "Research"
---

I work on circuit design and on the security of the systems those circuits run. Most of my time goes to analog and mixed-signal VLSI, digital VLSI, and programmable ASICs. More recently I have been working on hardware security, machine learning, and what happens when LLM agents are given control of real systems.

**Research interests:** Analog circuit design · Mixed-signal VLSI design · Digital VLSI design · Programmable ASIC design · Semiconductor devices · Hardware and IoT security · Machine learning · LLM agents for hardware design · LLM agent security

---

## Current Work

### Resilient LLM-Driven Network Operations at the Cyber Tactical Edge
{{< project-figure src="img/img-telemetry.png" alt="System architecture and threat model for telemetry corroboration" caption="Unauthenticated injection over syslog, SNMP, and gNMI, with L1 provenance and L2 device-state checks before the agent." >}}
An LLM agent that reads live telemetry and reconfigures devices is only as reliable as the telemetry it reads. Feed it a false diagnosis over unauthenticated syslog, SNMP, or gNMI and it acts on it every time, against 5% for the same payload written as a direct instruction. Sanitizing the telemetry does not help: masking device identifiers drops root-cause localization from 100% to 0%. Ground-Truth Corroboration checks each remediation-bearing claim against live device state before the agent sees it, which cuts injection-attributable attack success to 0% at about 0.18 s per check. *(Under review)*
{{< /project-figure >}}

### Interpretable IoT Intrusion Detection with Open-Set Robustness
{{< project-figure src="img/img-nids.png" alt="Overview of the CBM and NeSy-NIDS architectures" caption="A concept bottleneck with test-time intervention and a differentiable rule bank with a neural fallback, both scored for OOD by Mahalanobis distance." >}}
Two things go wrong with ML-based intrusion detection: you cannot tell why traffic was flagged, and attacks absent from training go unrecognized. The paper compares two architectures on IoT traffic. Concept Bottleneck Models route predictions through human-defined concepts that an operator can override at test time; Neuro-Symbolic NIDS turns expert signatures into differentiable threshold rules that binarize exactly, with a neural head as fallback. Neither costs classification accuracy. On CTU-IoT-23, NeSy-NIDS reaches an OOD AUROC of 0.906 and a moderately regularized JointCBM 0.895, both at or above an unconstrained MLP. On CIC-IoT-2023 the ranking flips: how tightly concept learning is coupled to the classification task decides OOD performance, which costs NeSy-NIDS and leaves JointCBM ahead. *(Under review)*
{{< /project-figure >}}

---

## Past Projects

### Sneak Path Mitigation in a Crossbar-Based AI Accelerator
{{< project-figure src="img/img-crossbar.png" alt="1D1R crossbar schematic and simulation result" caption="1D1R diode-modified crossbar schematic with transient simulation confirming sneak path suppression." >}}
Memristor crossbars used for in-memory inference leak current along unselected paths, which corrupts every read. I built a 1D1R cell, a diode in series with each memristor, in Cadence Virtuoso and brought read error down from **3,430% to under 10%**.
{{< /project-figure >}}

### Full-Custom CMOS XOR Gate Layout and Verification
{{< project-figure src="img/img-xor.png" alt="Full custom CMOS layout in Cadence Virtuoso" caption="Full custom CMOS layout in Cadence Virtuoso, 45nm GPDK45. Zero DRC/LVS violations." >}}
A 2-input CMOS XOR gate taken from schematic to physical layout in a 45nm process (GPDK45), built on a complementary pass-transistor topology. Clean on both DRC and LVS.
{{< /project-figure >}}

### Wireless Localization on Constrained Hardware
{{< project-figure src="img/img-localization.png" alt="Wireless localization system architecture" caption="WAP-based fingerprinting pipeline with radio map, classifier, and multi-device message broker." >}}
*(BTech Thesis)*  
A localization framework for IoT nodes that locate themselves rather than relying on a server, reaching **99% accuracy** with a 3 second average response time. Published at IEEE CONECCT 2024.
{{< /project-figure >}}
