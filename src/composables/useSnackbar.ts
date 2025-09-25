
const snackbar = ref(false)
const snackbarColor = ref<"success" | "error">("error")
const snackbarText = ref<string>()

export const useSnackbar = () => {
  const { smAndDown } = useDisplay()
  const snackbarLocation = computed(() => smAndDown.value ? "bottom" : "top")

  const push = ({ color, text }: { color?: "success" | "error", text: string }) => {
    snackbarColor.value = color ? color : "error"
    snackbarText.value = text
    snackbar.value = true
  }

  return {
    snackbar,
    snackbarColor,
    snackbarLocation,
    snackbarText,
    push
  }
}
