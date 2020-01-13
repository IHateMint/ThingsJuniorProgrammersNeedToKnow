# Image Super-Resolution Using Deep Convolutional Networks

## Paper Info
1. Conference: ECCV
2. Year: 2014

## Summary
- Contribution
    1. Learns end-to-end mapping between low and high resolution image using CNN (with mininum pre/post-processing)
    2. Naturally extends the traditional signal processing method to deep learning
    3. SOTA in super resolution task

## Details
- Why is Super Resolution a hard problem? Because it's ill-posed problem.
 - Traditional Super Resolution
     1. Example-based method: Simply build a dictionary of low resolution image patch and high resolution image patch (PCA, DCT, Haar)
     2. Sparse-coding-based method: Encode a low resolution image to sparse coefficient, and restore with dictionary
 - Method
     1. Patch extraction and representation: extract patch from LR image Y
     2. Non-linear mapping: map patch from N-dimension to M-dimension
     3. Reconstruction: generate HR image from M-dimension patch
        - Traditionally, 
 - More details
     - Metric
     - Dataset
     - Comparison
 - Minor details

## References
