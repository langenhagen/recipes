#!/bin/bash
# Lint the posts against stylistic errors.
# author: andreasl

# Check for wrong spacing with measure units
grep -HiRns '\bg\b' _posts/*

grep -HiRns '\bl\b' _posts/*
grep -HiRns '\bml\b' _posts/*

grep -HiRns '[0-9]EL\b' _posts/*
grep -HiRns '[0-9]TL\b' _posts/*

# Check for correct spacing at the end of lines
grep -EHiRns '[^[:space:]][[:space:]]$' _posts/*
grep -EHiRns '[[:space:]]{3,}$' _posts/*
