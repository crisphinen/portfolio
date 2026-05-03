---
title: "Research"
---

I design circuits and study the systems they power. My work spans analog and mixed-signal design, digital VLSI, and wireless communication, with a growing focus on the security of IoT hardware and machine learning.

**Research interests:** Analog circuit design · Digital circuit design · Digital VLSI · Mixed-signal design · Wireless communication · Hardware and IoT security · Machine learning

---

## Current Work

### Interpretable IoT Intrusion Detection with Open-Set Robustness
ML-based network intrusion detection systems (NIDS) struggle with interpretability and novel attack families unseen during training. This work jointly evaluates two complementary architectures on IoT traffic classification: **Concept Bottleneck Models (CBMs)**, which route predictions through human-defined traffic concepts and support test-time intervention, and **Neuro-Symbolic NIDS (NeSy-NIDS)**, which encodes domain-expert attack signatures as differentiable threshold rules with learnable parameters. Both use Mahalanobis distance for open-set scoring. Evaluated on CTU-IoT-23 and CIC-IoT-2023, neither method incurs classification accuracy cost (F1 within ±0.0015 of an unconstrained MLP), with NeSy-NIDS achieving OOD AUROC of 0.909 on CTU-IoT-23. *(Under review)*

---

## Past Projects

### Sneak Path Mitigation in a Crossbar-Based AI Accelerator
Investigated the sneak path problem in resistive memristor crossbar arrays used for in-memory neural network inference. Designed a 1D1R (diode + memristor) cell architecture in Cadence Virtuoso that reduced read error from **3,430% to under 10%**, enabling practical crossbar-based multiply-accumulate operations for edge AI.

### Full-Custom CMOS XOR Gate Layout and Verification
Designed and verified a 2-input CMOS XOR gate from schematic to physical layout in a 45nm process (GPDK45). Implemented using a complementary pass-transistor topology, achieving zero DRC and LVS violations. Demonstrates the complete RTL-to-GDS design flow in Cadence Virtuoso.

### Wireless Localization on Constrained Hardware
*(BTech Thesis)*  
Designed a real-time localization framework for IoT nodes that achieves **99% accuracy** with an average response time of 3 seconds. The system addresses the challenge of self-localization in resource-limited connected devices for applications in asset tracking, indoor navigation, and context-aware services. Published at IEEE CONECCT 2024.
