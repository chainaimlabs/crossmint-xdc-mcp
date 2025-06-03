{
  "mcpServers": {
    "CA-MCP-SERVER": {
      "command": "node",
      "args": ["C:\\SATHYA\\AI-MCP-NANDA-chainaim3003\\mcp\\risk-simulation\\build\\index.js"]
    },
    "CIVIC-MCP-SERVER": {
      "command": "node",
      "args": ["C:\\SATHYA\\CHAINAIM3003\\mcp-servers\\civic-pass-mcp-server\\civic-pass-checker-mcp\\dist\\index.js"],
      "env": {
        "XDC_NETWORK": "testnet",
        "SELLER_WALLET_ADDRESS": "0xb4201D61390BD7b17889057494501d6aE943c290"
      }
    },
    "Goat-EVM-MCP-Server": {
      "command": "node",
      "args": ["C:\\SATHYA\\ELIZA-XDC\\CHAINAIM3003\\goat\\typescript\\examples\\by-framework\\model-context-protocol\\build\\server\\xdcGoatMain1.js"],
      "env": {
        "WALLET_PRIVATE_KEY": "0x64aa93e0e0bfec460d474e6b03054a12c103211e5e9d8e11bec984dc8a2d8cb2",
        "DEFAULT_WALLET_PRIVATE_KEY": "0x64aa93e0e0bfec460d474e6b03054a12c103211e5e9d8e11bec984dc8a2d8cb2",
        "RPC_PROVIDER_URL": "https://rpc.apothem.network",
        "CAT_MM_SELLER_WALLET_PRIVATE_KEY": "0x30004a2fce033b46e06a57773bde9c18ab708d2545861a54245b13b9509fd999",
        "CAT_MM_SELLER_PUBLIC_WALLET_ADDRESS": "0x9281B31230C735867a2Fd62aF8ec816Cc1714521",
        "CAT_MM_BUYER_WALLET_PRIVATE_KEY": "0x64aa93e0e0bfec460d474e6b03054a12c103211e5e9d8e11bec984dc8a2d8cb2",
        "CAT_MM_BUYER_PUBLIC_WALLET_ADDRESS": "0x139E4d70f435d8c2d17400566DB8cB0d7483bf30",
        "CAT_MM_FINANCIER_WALLET_PRIVATE_KEY": "0x4cb798df1398127b09da57c9332a3e20763426f74c0a963a5dab2adf26d5eab6",
        "CAT_MM_FINANCIER_PUBLIC_WALLET_ADDRESS": "0x22E3463a7b458c542B7a17E3C58835f6CF78F906",
        "CM_SELLER_WALLET_PRIVATE_KEY": "0x0000000000000000000000000000000000000000000000000000000000000001",
        "CM_BUYER_WALLET_PRIVATE_KEY": "0x0000000000000000000000000000000000000000000000000000000000000001",
        "CVC_SELLER_WALLET_PRIVATE_KEY": "0x0000000000000000000000000000000000000000000000000000000000000001",
        "CVC_BUYER_WALLET_PRIVATE_KEY": "0x0000000000000000000000000000000000000000000000000000000000000001",
        "PINATA_API_KEY": "5924ab97c5939aa102c0",
        "PINATA_API_SECRET": "adda68caa4b738d06c4507903775c39fa89b897346f55cc856bcea88db615d20",
        "PINATA_JWT": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySW5mb3JtYXRpb24iOnsiaWQiOiJhYTk3NDY5MS0wZWZiLTRkYTItODFjNS0wYWViZDZlYTI5OGYiLCJlbWFpbCI6InNoZW5veS5zaGFpbGVzaDk3QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaW5fcG9saWN5Ijp7InJlZ2lvbnMiOlt7ImlkIjoiRlJBMSIsImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxfSx7ImlkIjoiTllDMSIsImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxfV0sInZlcnNpb24iOjF9LCJtZmFfZW5hYmxlZCI6ZmFsc2UsInN0YXR1cyI6IkFDVElWRSJ9LCJhdXRoZW50aWNhdGlvblR5cGUiOiJzY29wZWRLZXkiLCJzY29wZWRLZXlLZXkiOiI1OTI0YWI5N2M1OTM5YWExMDJjMCIsInNjb3BlZEtleVNlY3JldCI6ImFkZGE2OGNhYTRiNzM4ZDA2YzQ1MDc5MDM3NzVjMzlmYTg5Yjg5NzM0NmY1NWNjODU2YmNlYTg4ZGI2MTVkMjAiLCJpYXQiOjE3MTQyOTQ5NDR9.t0R1icXG-YvlAp61SHBOUiHr7Cin2BjNm2N5NP2eP78",
        "IPFS_GATEWAY": "https://bronze-selected-mastodon-614.mypinata.cloud/ipfs/"
      }
    },
    "Crossmint-MCP-Server": {
      "command": "node",
      "args": ["C:\\SATHYA\\CHAINAIMLABS\\mcp-servers\\crossmint-xdc-mcp\\index.js","--port", "3006"],
      "env": {
        "CROSSMINT_API_KEY": "5N2myhBJX4PN5pYm5zcHiQQiHbg44w3fdA3mW3JgqomPcyosDp1uxsEESiAKpHFryPTRfmZjvCihJdrPUptev3n9bosCbDCDAhDxsLoQ4aPEXcTJQXEVbi9CzYuNNFergkBTm3iUpNSxHs94otzWuvEznrvnfbUvWBmvkNgrNYD8bJZ5f31cjd4Are69vAvVhYyG9BqpscR73d1DqUfoNZvj",
        "CROSSMINT_WALLET_ADDRESS": "0xB93B80087E4188260F17351D7cb1Fa6F21Ee701f",
        "XDC_CHAIN_ID": "51",
        "XDC_CHAIN_NAME": "XDC Apothem Testnet",
        "XDC_RPC": "https://erpc.apothem.network",
        "ERC721_CONTRACT": "0x112b9Dd28019309c834309a4a966f827687c84d6",
        "POLYTRADE_BASE_ASSET": "0x8A3a86d55b3F57b4Be9ce0113e09d0B9f7b12771",
        "POLYTRADE_WRAPPED_ASSET": "0x92F5a2bD28CCB184af7874e1707ABc7a7df45075",
        "POLYTRADE_MARKETPLACE": "0x0d1Aa18eFa38eE8c3d32A84b9D452EAf4E3D571d"
      }
    },
    "REALPOLYAGENTWEAVE-MCP-Server": {
      "command": "node",
      "args": ["C:\\SATHYA\\CHAINAIM3003\\mcp-servers\\marketplace-sc\\src\\blockchain-mcp-server.js"],
      "env": {
        "WRAPPER_CONTRACT": "0x92F5a2bD28CCB184af7874e1707ABc7a7df45075",
        "NFT_OWNER_PRIVATE_KEY": "0x30004a2fce033b46e06a57773bde9c18ab708d2545861a54245b13b9509fd999",
        "RPC_URL": "https://rpc.apothem.network",
        "ORIG_NFT_CONTRACT_ADDRESS": "0x8C68D4f020bc45B2AeA2B9D4EF2b137A1F85292E",
        "ORIG_NFT_RECIPIENT_ADDRESS": "0x9281B31230C735867a2Fd62aF8ec816Cc1714521",
        "ORIG_NFT_TOKEN_URI": "https://example.com/metadata.json",
        "ORIG_NFT_OWNER_PRIVATE_KEY": "0x30004a2fce033b46e06a57773bde9c18ab708d2545861a54245b13b9509fd999",
        "POLYTRADE_BASE_ASSET_TESTNET_CONTRACT": "0x8A3a86d55b3F57b4Be9ce0113e09d0B9f7b12771",
        "POLYTRADE_WRAPPED_ASSET_TESTNET_CONTRACT": "0x92F5a2bD28CCB184af7874e1707ABc7a7df45075",
        "POLYTRADE_MARKETPLACE_TESTNET_CONTRACT": "0x0d1Aa18eFa38eE8c3d32A84b9D452EAf4E3D571d",
        "POLYTRADE_FEE_MANAGER_TESTNET_CONTRACT": "0x31dDa0071Da559E4189C6Beb11eca942cB0350BE",
        "POLYTRADE_ADMIN_TESTNET_PRIVATE_KEY": "0xf892da390e7e8a247c4b5a4f1dc9226edacd0b1a92a33ca82ecc1951d5d31112",
        "TARGET_TOKEN_ID": "27",
        "TARGET_FRACTIONS": "100000",
        "XDC_TESTNET_RPC": "https://erpc.apothem.network",
        "XDC_MAINNET_RPC": "https://rpc.xinfin.network",
        "DEFAULT_INITIAL_FEE": "250",
        "DEFAULT_BUYING_FEE": "150",
        "FEE_WALLET_ADDRESS": "0xDED1A2A74a5C0512A98dA8d6bD4B9E51C318084e",
        "GAS_PRICE": "25000000000",
        "GAS_LIMIT": "508000000",
        "NETWORK_TIMEOUT": "60000",
        "CONFIRMATION_BLOCKS": "1",
        "PINATA_API_KEY": "5924ab97c5939aa102c0",
        "PINATA_API_SECRET": "adda68caa4b738d06c4507903775c39fa89b897346f55cc856bcea88db615d20",
        "PINATA_JWT": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySW5mb3JtYXRpb24iOnsiaWQiOiJhYTk3NDY5MS0wZWZiLTRkYTItODFjNS0wYWViZDZlYTI5OGYiLCJlbWFpbCI6InNoZW5veS5zaGFpbGVzaDk3QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJwaW5fcG9saWN5Ijp7InJlZ2lvbnMiOlt7ImlkIjoiRlJBMSIsImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxfSx7ImlkIjoiTllDMSIsImRlc2lyZWRSZXBsaWNhdGlvbkNvdW50IjoxfV0sInZlcnNpb24iOjF9LCJtZmFfZW5hYmxlZCI6ZmFsc2UsInN0YXR1cyI6IkFDVElWRSJ9LCJhdXRoZW50aWNhdGlvblR5cGUiOiJzY29wZWRLZXkiLCJzY29wZWRLZXlLZXkiOiI1OTI0YWI5N2M1OTM5YWExMDJjMCIsInNjb3BlZEtleVNlY3JldCI6ImFkZGE2OGNhYTRiNzM4ZDA2YzQ1MDc5MDM3NzVjMzlmYTg5Yjg5NzM0NmY1NWNjODU2YmNlYTg4ZGI2MTVkMjAiLCJpYXQiOjE3MTQyOTQ5NDR9.t0R1icXG-YvlAp61SHBOUiHr7Cin2BjNm2N5NP2eP78",
        "IPFS_GATEWAY": "https://bronze-selected-mastodon-614.mypinata.cloud/ipfs/"
      }
    },
    "PRET-MCP-SERVER-internal": {
      "command": "node",
      "args": ["C:\\SATHYA\\ZK\\ZK-PRET-CHAINAIMLABS\\ZK-PRET-TEST-V3\\build\\pretmcpserver\\index.js"],
      "env": {
        "GLEIF_URL_PROD": "https://api.gleif.org/api/v1/lei-records",
        "GLEIF_URL_SANDBOX": "https://api.gleif.org/api/v1/lei-records",
        "GLEIF_URL_MOCK": "https://9a4d8990-c981-42fa-ace4-675ddec17321.mock.pstmn.io",
        "BUILD_ENV": "TESTNET",
        "CORPREG_URL_PROD_INDIA": "https://api.sandbox.co.in/mca/company/master-data/search",
        "CORPREG_URL_SANDBOX_INDIA": "https://api.sandbox.co.in/mca/company/master-data/search",
        "CORPREG_URL_MOCK_INDIA": "https://0f4aef00-9db0-4057-949e-df6937e3449b.mock.pstmn.io",
        "AUTH_URL": "https://api.sandbox.co.in/authenticate",
        "CIN": "U01112TZ2022PTC039493",
        "CONSENT": "Y",
        "REASON": "basic test",
        "API_KEY": "key_live_8d7cNCKQpDFFuwl3PuyhMfcXZJ2zi7If",
        "API_SECRET": "secret_live_S2HMw55pj2Ow78EsD9OEyPfadqlyOLue",
        "API_VERSION": "v3",
        "EXIM_URL_PROD_INDIA": "https://0f4aef00-9db0-4057-949e-df6937e3449b.mock.pstmn.io",
        "EXIM_URL_SANDBOX_INDIA": "https://0f4aef00-9db0-4057-949e-df6937e3449b.mock.pstmn.io",
        "EXIM_URL_MOCK_INDIA": "https://0f4aef00-9db0-4057-949e-df6937e3449b.mock.pstmn.io"
      }
    },
    "weatherpy2": {
      "command": "npx",
      "args": ["-y", "@h1deya/mcp-server-weather"]
    },
    "sqlite": {
      "command": "docker",
      "args": [
        "run",
        "--rm",
        "-i",
        "-v",
        "mcp-test:/mcp",
        "mcp/sqlite",
        "--db-path",
        "/mcp/test.db"
      ]
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"]
    },
    "BLOCKCHAIN-MCP-SERVER": {
      "command": "node",
      "args": ["C:\\SATHYA\\AI-MCP-NANDA-Chainaim3003\\mcp\\blockchain\\build\\index.js"]
    },
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "C:\\SATHYA\\CHAINAIM3003\\MCP-SANDBOX"]
    }
  }
}