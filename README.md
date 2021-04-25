# Meta-CrySL

Meta-CrySL is a meta-specification language for CrySL. The main goal is to support reuse and modularization of CrySL specifications. Based on a domain analysis, we found that CrySL specifications might vary according to different perspectives, including:

   * JCA implementation (e.g., JCE provider or Bouncy Castle provider)
   * API implementation version (e.g., Bouncy Castle 1.60 x Bouncy Castle 1.50)
   * Cryptographic standards (e.g., FIPS and EuroCrypt)
   
# Approach

Meta-CrySL is mostly based on meta-programming. We use three different languages: 

   * ECrySL: a slight extension to the original CrySL language
   * Refinement: a language that supports different refinement operations over ECrySL specifications
   * Configuration: a language that puts together ECrySL and Refinement specifications 

We use a program generator infrastructure that takes as input a configuration file and outputs regular CrySL specifications. In this way, we do not have to modify the current crypto analysis of CogniCrypt.

# Requirements

We have successfully tested this implementation using the following settings.

   * Java Development Kit - Version 8
   * [Eclipse RCP 2019-06](https://www.eclipse.org/downloads/packages/release/2019-06/r/eclipse-ide-rcp-and-rap-developers)
   * Rascal-MPL 0.18.3 (you can use the version from the RascalMPL Eclipse update site [https://update.rascal-mpl.org/stable/]

The following video shows how to use this implementation.

   * [MetaCrySL usage scenario](https://youtu.be/PmYWK926RrM)