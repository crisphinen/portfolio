---
title: "Research"
---

I design circuits and study the systems they power. My work spans analog and mixed-signal design, digital VLSI, and programmable ASICs, with a growing focus on hardware and IoT security, LLM agent security, and machine learning.

**Research interests:** Analog circuit design · Digital VLSI design · Mixed-signal VLSI design · Programmable ASIC design · Semiconductor devices · Hardware and IoT security · LLM agent security · Machine learning

---

## Current Work

{{< project-figure src="img/img-telemetry.png" alt="System architecture and threat model for telemetry corroboration" caption="Unauthenticated injection over syslog, SNMP, and gNMI, with L1 provenance and L2 device-state checks before the agent." >}}
### Resilient LLM-Driven Network Operations at the Cyber Tactical Edge
LLM agents that read live telemetry and reconfigure devices inherit the trustworthiness of that telemetry. An adversary who injects a plausible but false diagnosis over unauthenticated syslog, SNMP, or gNMI reaches **100% attack success** across three vectors and three off-policy objectives (route hijack, monitor-disable, ACL deletion), whereas an equivalent prompt-injection payload succeeds in only 5%, because the agent adopts the supplied diagnosis as a premise rather than as an instruction. Taint-based telemetry sanitization fails structurally here: the message space is open, so a reformatted payload evades it, and masking identity fields collapses root-cause localization from 100% to 0%. **Ground-Truth Corroboration** instead lets the LLM reason freely but forwards a remediation-bearing claim only when a deterministic verifier confirms it against live device state, driving injection-attributable attack success to **0%** at a mean verification latency of 0.18 s. Evaluated on an eight-router, multi-AS topology across six models. *(Under review)*
{{< /project-figure >}}

{{< project-figure src="img/img-nids.png" alt="NeSy-CBM architecture diagram" caption="CBM and NeSy-NIDS architectures with Mahalanobis OOD scoring." >}}
### Interpretable IoT Intrusion Detection with Open-Set Robustness
ML-based network intrusion detection systems (NIDS) struggle with interpretability and novel attack families unseen during training. This work jointly evaluates two complementary architectures on IoT traffic classification: **Concept Bottleneck Models (CBMs)**, which route predictions through human-defined traffic concepts and support test-time intervention, and **Neuro-Symbolic NIDS (NeSy-NIDS)**, which encodes domain-expert attack signatures as differentiable threshold rules with learnable parameters. Both use Mahalanobis distance for open-set scoring. Evaluated on CTU-IoT-23 and CIC-IoT-2023, neither method incurs classification accuracy cost (F1 within ±0.0015 of an unconstrained MLP), with NeSy-NIDS achieving OOD AUROC of 0.909 on CTU-IoT-23. *(Under review)*
{{< /project-figure >}}

---

## Past Projects

{{< project-figure src="img/img-crossbar.png" alt="1D1R crossbar schematic and simulation result" caption="1D1R diode-modified crossbar schematic with transient simulation confirming sneak path suppression." >}}
### Sneak Path Mitigation in a Crossbar-Based AI Accelerator
Investigated the sneak path problem in resistive memristor crossbar arrays used for in-memory neural network inference. Designed a 1D1R (diode + memristor) cell architecture in Cadence Virtuoso that reduced read error from **3,430% to under 10%**, enabling practical crossbar-based multiply-accumulate operations for edge AI.
{{< /project-figure >}}

{{< project-figure src="img/img-xor.png" alt="Full custom CMOS layout in Cadence Virtuoso" caption="Full custom CMOS layout in Cadence Virtuoso, 45nm GPDK45. Zero DRC/LVS violations." >}}
### Full-Custom CMOS XOR Gate Layout and Verification
Designed and verified a 2-input CMOS XOR gate from schematic to physical layout in a 45nm process (GPDK45). Implemented using a complementary pass-transistor topology, achieving zero DRC and LVS violations. Demonstrates the complete RTL-to-GDS design flow in Cadence Virtuoso.
{{< /project-figure >}}

{{< project-figure src="img/img-localization.png" alt="Wireless localization system architecture" caption="WAP-based fingerprinting pipeline with radio map, classifier, and multi-device message broker." >}}
### Wireless Localization on Constrained Hardware
*(BTech Thesis)*  
Designed a real-time localization framework for IoT nodes that achieves **99% accuracy** with an average response time of 3 seconds. The system addresses the challenge of self-localization in resource-limited connected devices for applications in asset tracking, indoor navigation, and context-aware services. Published at IEEE CONECCT 2024.
{{< /project-figure >}}
