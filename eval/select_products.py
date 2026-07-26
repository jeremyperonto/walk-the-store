#!/usr/bin/env python3
"""Seeded random selection for pre-deploy walk evals. Usage: select_products.py YYYYMMDD"""
import random, sys

MARKETPLACES = ["amazon", "walmart", "ebay", "etsy", "tiktok-shop", "shopify"]
QUERIES = [
    "yoga mat", "cast iron skillet", "dog leash", "desk lamp",
    "insulated water bottle", "kids wooden puzzle", "scented candle",
    "travel backpack", "coffee grinder", "garden pruning shears",
    "weighted blanket", "lunch box",
]

def roll(seed: int, n: int = 5):
    rng = random.Random(seed)
    pairs = list(zip(rng.sample(MARKETPLACES, min(n, len(MARKETPLACES))), rng.sample(QUERIES, n)))
    return [(m, q, rng.randint(2, 8)) for m, q in pairs]

if __name__ == "__main__":
    seed = int(sys.argv[1]) if len(sys.argv) > 1 else 0
    if not seed:
        sys.exit("usage: select_products.py YYYYMMDD  (seed is recorded in the eval report)")
    print(f"seed: {seed}")
    for m, q, pos in roll(seed):
        print(f"{m:12s} query='{q}'  organic result #{pos}")
