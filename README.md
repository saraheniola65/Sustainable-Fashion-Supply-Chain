# Sustainable Fashion Supply Chain

## Overview

This project implements a blockchain-based solution for tracking and verifying sustainability throughout the fashion supply chain. By utilizing smart contracts, we create a transparent, immutable record of a garment's journey from raw material to consumer and beyond, ensuring accountability at every stage.

## Smart Contracts

### 1. Material Sourcing Contract

Tracks the origin and sustainability credentials of all raw materials used in garment production.

**Key Features:**
- Material origin verification
- Certification recording (organic, recycled, fair-trade)
- Batch tracking and documentation
- Sustainability metrics calculation
- Supplier compliance history

### 2. Manufacturing Process Verification Contract

Ensures ethical production practices throughout the manufacturing process.

**Key Features:**
- Labor condition documentation
- Environmental impact measurement
- Chemical usage tracking
- Energy consumption monitoring
- Waste management verification
- Manufacturing facility certification

### 3. Product Lifecycle Contract

Manages information from creation to recycling, enabling true circular economy.

**Key Features:**
- Product digital passport creation
- Component and material breakdown
- Durability estimates
- Repair history tracking
- End-of-life recycling instructions
- Carbon footprint calculations

### 4. Consumer Engagement Contract

Provides product history and sustainability metrics directly to consumers.

**Key Features:**
- QR code/NFC tag integration
- Transparent product journey visualization
- Sustainability score display
- Care and repair recommendations
- Recycling incentive programs
- Consumer feedback collection

## Getting Started

### Prerequisites
- Node.js (v16+)
- Solidity compiler (v0.8+)
- Truffle or Hardhat development environment
- MetaMask or similar wallet for testing
- Access to an Ethereum testnet

### Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/sustainable-fashion-chain.git
   cd sustainable-fashion-chain
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Compile smart contracts:
   ```
   npx truffle compile
   ```
   or
   ```
   npx hardhat compile
   ```

4. Deploy to testnet:
   ```
   npx truffle migrate --network rinkeby
   ```
   or
   ```
   npx hardhat run scripts/deploy.js --network rinkeby
   ```

## Usage Examples

### Material Supplier
```javascript
// Register a new batch of organic cotton
await materialContract.registerMaterial(
  "OrganicCotton123", 
  "Tanzania", 
  "GOTS Certified", 
  1500, // kg
  {from: supplierAddress}
);
```

### Manufacturer
```javascript
// Record manufacturing process for a product batch
await manufacturingContract.recordProcess(
  "BatchABC123",
  "materialId", 
  "SolarPowered", 
  "ZeroWaste", 
  {from: manufacturerAddress}
);
```

### Brand Owner
```javascript
// Create product lifecycle record
await lifecycleContract.createProduct(
  "ProductXYZ", 
  "Dress", 
  ["materialId1", "materialId2"], 
  365, // estimated lifespan in days
  true, // recyclable
  {from: brandAddress}
);
```

### Consumer Interface
```javascript
// Get complete product history
const productHistory = await consumerContract.getProductHistory("ProductXYZ");
```

## Contributing

We welcome contributions to improve the Sustainable Fashion Supply Chain project:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Global Organic Textile Standard (GOTS)
- Fashion Revolution
- Sustainable Apparel Coalition
- United Nations Sustainable Development Goals
