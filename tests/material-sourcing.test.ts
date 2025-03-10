import { describe, it, expect, vi } from "vitest"

// Mock contract calls

describe("Material Sourcing Contract", () => {
  it("should add a new material", () => {
    const mockContractCall = vi.fn()
    mockContractCall.mockReturnValueOnce({ result: { value: 1 } })
    const result = mockContractCall("add-material", ["Cotton", "India", 80, "Organic Certified"])
    expect(result.result.value).toBe(1)
  })
  
  it("should get material details", () => {
    const mockContractCall = vi.fn()
    mockContractCall.mockReturnValueOnce({
      result: {
        name: "Cotton",
        origin: "India",
        "sustainability-score": 80,
        certification: "Organic Certified",
      },
    })
    const result = mockContractCall("get-material", [1])
    expect(result.result).toEqual({
      name: "Cotton",
      origin: "India",
      "sustainability-score": 80,
      certification: "Organic Certified",
    })
  })
  
  it("should get sustainability score", () => {
    const mockContractCall = vi.fn()
    mockContractCall.mockReturnValueOnce({ result: { value: 80 } })
    const result = mockContractCall("get-sustainability-score", [1])
    expect(result.result.value).toBe(80)
  })
})

