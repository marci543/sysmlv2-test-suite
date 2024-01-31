# SysML v2 Test Suites

This repo contains a collection of [SysMLv2](https://www.omg.org/spec/SysML/2.0/Beta1) state machine models to be used as test suites.
- `execution-traces`: State machines and their execution traces
  - The execution traces are generated using the [Gamma Statechart Composition Framework](https://github.com/ftsrg/gamma).
  - The test cases are based on [UML/PSSM](https://www.omg.org/spec/PSSM/1.0/) tests.
- `validation-tests`: Validation test cases
  - Validation errors and warnings in the models are annotated using metadata, which is a built-in SysMLv2 element.
  - The tests are based on [SysMLv2 validation tests](https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation/tree/af2ff5082c6345224f76cc091cc83f5f29bb2d65/org.omg.sysml.xpect.tests/src/org/omg/sysml/xpect/tests/validation) using Xpect framework.

## Contributors:
- Emma Benkő: validation tests
- Péter Orosz: execution traces
- Márton Elekes: supervisor

## License
This repo is licensed under the GNU Lesser General Public License. See the files [LICENSE](LICENSE) and [LICENSE-GPL](LICENSE-GPL).
