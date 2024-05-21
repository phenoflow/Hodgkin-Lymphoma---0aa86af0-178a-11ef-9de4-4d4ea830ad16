cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hodgkin-lymphoma---primary:
    run: hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  hodgkin-lymphoma-spleen---primary:
    run: hodgkin-lymphoma-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma---primary/output
  hodgkin-lymphoma-unspecified---primary:
    run: hodgkin-lymphoma-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-spleen---primary/output
  multiple-hodgkin-lymphoma---primary:
    run: multiple-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-unspecified---primary/output
  hodgkin-lymphoma-sarcoma---primary:
    run: hodgkin-lymphoma-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: multiple-hodgkin-lymphoma---primary/output
  hodgkin-lymphoma-sclerosis---primary:
    run: hodgkin-lymphoma-sclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-sarcoma---primary/output
  hodgkin-lymphoma-axilla---primary:
    run: hodgkin-lymphoma-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-sclerosis---primary/output
  hodgkin-lymphoma-hodgkin's---primary:
    run: hodgkin-lymphoma-hodgkin's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-axilla---primary/output
  hodgkin-lymphoma-cellularity---primary:
    run: hodgkin-lymphoma-cellularity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-hodgkin's---primary/output
  other-hodgkin-lymphoma---primary:
    run: other-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-cellularity---primary/output
  intrathoracic-hodgkin-lymphoma---primary:
    run: intrathoracic-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-hodgkin-lymphoma---primary/output
  hodgkin-lymphoma-depletion---primary:
    run: hodgkin-lymphoma-depletion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: intrathoracic-hodgkin-lymphoma---primary/output
  hodgkin-lymphoma-predominance---primary:
    run: hodgkin-lymphoma-predominance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-depletion---primary/output
  hodgkin-lymphoma-granuloma---primary:
    run: hodgkin-lymphoma-granuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-predominance---primary/output
  hodgkin-lymphoma-history---primary:
    run: hodgkin-lymphoma-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-granuloma---primary/output
  inguinal-hodgkin-lymphoma---primary:
    run: inguinal-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-history---primary/output
  classical-hodgkin-lymphoma---primary:
    run: classical-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: inguinal-hodgkin-lymphoma---primary/output
  hodgkin-lymphoma-[m]hodgkin's---primary:
    run: hodgkin-lymphoma-[m]hodgkin's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: classical-hodgkin-lymphoma---primary/output
  lymphocytichistiocytic-hodgkin-lymphoma---primary:
    run: lymphocytichistiocytic-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: hodgkin-lymphoma-[m]hodgkin's---primary/output
  intraabdominal-hodgkin-lymphoma---primary:
    run: intraabdominal-hodgkin-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lymphocytichistiocytic-hodgkin-lymphoma---primary/output
  hodgkin---primary:
    run: hodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: intraabdominal-hodgkin-lymphoma---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: hodgkin---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
